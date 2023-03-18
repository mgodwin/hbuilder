html.navbar do
  html.a url_for(:controller => 'home', :action => 'index')
end

html.main do
  html.section do
    html.heading 'Hello World!'
    html.p
    html.heading 'Hi mom!'
  end
end

html.name collection: ['john', 'Doe'] do |part|
  html.span.name_part part
end

html.ol collection: @comments, behavior: :reorderable do |comment|
  html.li do
    html.name comment.name, behavior: :click_to_edit
    html.email comment.email
    html.time comment.created_at
  end
end

html.page_container do
  html.banner_container do 
    html.alert_region
  end
  html.navigation_col
  html.main.primary_col do
    
  end
  html.resize_handle behavior: :resize_handle do
    html.svg.resize_handle_icon width: 16, height: 40, view_box: '0 0 16 40' do
      html.g do
        html.path d: 'M0,0 L16,20 L0,40'
      end
    end
  end
  html.section.document_col id: 'secondary'
  html.section.document_col id: 'tertiary' do
    
  end
end



html.form model: Comment.new, behavior: :async do |comment|
  html.partial 'model_form'
end

html.side_nav do
  html.a url_for(:controller => 'home', :action => 'index')
end
