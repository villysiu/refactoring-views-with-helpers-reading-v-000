require 'rails_helper'

#RSpec.describe "authors/show.html.erb", type: :view do
#  pending "add some examples to (or delete) #{__FILE__}"
#end

RSpec.describe "Author" do
  describe 'search' do
    let(:author_names) { ['Bob', 'Robert', 'Roberta', 'Shirley', 'Shelby'] }

    before do
      author_names.each do |name|
        Author.create(name: name, genre: 'scifi')
      end
    end

  it "renders author information" do
    view.lookup_context.prefixes = %w[authors]
    assign(:authors, Author.all)
    render :template => "authors/show.html.erb"
    expect(rendered).to include('Bob')
  end
end
