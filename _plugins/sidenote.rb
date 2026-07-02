module Jekyll
  class RenderSideNoteTag < Liquid::Tag

    require "shellwords"

    @@note_id = 0

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
      @@note_id += 1
      id = "sn-#{@@note_id}"
      "<label for='#{id}' class='margin-toggle sidenote-number'><sup class='sidenote-number'>#{@text[0]}</sup></label><input type='checkbox' id='#{id}' class='margin-toggle'/><span class='sidenote'><sup class='sidenote-number'>#{@text[0]}</sup> #{@text[1]}</span>"
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::RenderSideNoteTag)
