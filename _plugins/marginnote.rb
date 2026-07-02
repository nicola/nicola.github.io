module Jekyll
  class RenderMarginNoteTag < Liquid::Tag

require "shellwords"

    @@note_id = 0

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
      @@note_id += 1
      id = "mn-#{@@note_id}"
      "<label for='#{id}' class='margin-toggle'>&#8853;</label><input type='checkbox' id='#{id}' class='margin-toggle'/><span class='marginnote'>#{@text[0]}</span> "
    end
  end
end

Liquid::Template.register_tag('marginnote', Jekyll::RenderMarginNoteTag)
