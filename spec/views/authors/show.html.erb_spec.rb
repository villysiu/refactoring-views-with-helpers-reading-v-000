require 'rails_helper'

#RSpec.describe "authors/show.html.erb", type: :view do
#  pending "add some examples to (or delete) #{__FILE__}"
#end

RSpec.describe "show_authors" do
  let(:author){ Author.create(name: 'Bobby', genre: 'scifi', bio: 'not available yet') }

  it "renders author information" do
    view.lookup_context.prefixes = %w[authors]
    assign(:author, author)
    render :template => "authors/show.html.erb"
    expect(rendered).to include('Bobby')
  end
end