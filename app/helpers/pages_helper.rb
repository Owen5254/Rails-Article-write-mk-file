module PagesHelper

    def markdown(text)
        Markdown.new(text, extensions = {}).to_html.html_safe
    end
end
