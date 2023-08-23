# https://stackoverflow.com/questions/61814907/how-to-specify-a-custom-language-parser-alias-for-rouge-in-jekyll-3
Jekyll::Hooks.register :site, :pre_render do |site|
  puts "Adding 6502 syntax highlighting..."
  require "rouge"

  # crude lexer for 6502 assembly. currently incomplete, will be extended
  # whenever i need new syntax
  class MOS6502Lexer < Rouge::RegexLexer
    title "6502"
    desc "MOS 6502 assembly"
    tag "6502"
    # aliases
    filenames "*.asm", "*.s"
    # mimetypes
    
    # used when no other rule in the state matches
    default = %r/.*?/

    # start of the line
    state :root do
      mixin :whitespace
      mixin :comment
      mixin :address
      mixin :instruction
      mixin :label
    end

    state :whitespace do
      rule %r/\s+/, Text::Whitespace
    end

    state :comment do
      rule %r/;.*$/ do
        token Comment::Single
        goto :root
      end
      # default. this way, if the current state is comment and there isn't a
      # comment char, then it will show up as an error
      rule %r/$/, Text::Whitespace do
        goto :root
      end
      mixin :whitespace
    end

    state :label do
      mixin :whitespace
      rule %r/(@?\w*)?(:)/ do
        groups Name::Tag, Punctuation
        goto :comment
      end
    end

    state :address do
      mixin :whitespace
      mixin :comment
      rule %r/([0-9A-Fa-f]{4})(:)/ do
        groups Name::Other, Punctuation
        goto :byte
      end
    end

    state :byte do
      mixin :whitespace
      mixin :comment
      rule %r/([0-9A-Fa-f]{2})\b/ do
        groups Comment::Preproc, Text::Whitespace
      end
      rule default, Text::Whitespace do
        goto :instruction
      end
    end

    state :instruction do
      mixin :comment
      rule %r/([A-Z]{3}|[a-z]{3})(\*?)\b/ do
        groups Keyword::Declaration, Punctuation, Text::Whitespace
        goto :operand
      end
      mixin :whitespace
      # no default because every address line needs an instruction
    end

    state :operand do
      mixin :comment
      # rule %r/[0-9A-Fa-f]+/, Literal::Number do
      rule %r/[\$#]+[0-9A-Fa-f]+/ do
        token Literal::Number
        goto :comment
      end
      rule %r/(@?)([a-zA-Z]+)?/ do
        groups Name::Tag, Name::Other
        goto :offset
      end
    end

    state :offset do
      rule %r/(\+)(\d+)/ do
        groups Name::Tag, Literal::Number
        goto :comment
      end
      rule default do
        goto :comment
      end
    end
  end
end

