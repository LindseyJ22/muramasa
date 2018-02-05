module Header

  def open_menu
    find_link("Why Appreciate").click
    expect(page).to have_css("div h1", :text => "elevate everything")
    find_link("Products").click
    expect(page).to have_css("div h1", :text => "specificity matters")
    find_link("Why Choose Us").click
    expect(page).to have_css("div h1", :text => "partner with excellence")
    find_link("Insights").click
    expect(page).to have_css("div h1", :text => "gain understanding")
    find_link("Institute").click
    expect(page).to have_css("div h1", :text => "institute")
    find_link("Clients").click
    expect(page).to have_css("div h1", :text => "cultures of great work")
    # page.find[:css, "a[id='mobile-nav-link']"].click
  end

end