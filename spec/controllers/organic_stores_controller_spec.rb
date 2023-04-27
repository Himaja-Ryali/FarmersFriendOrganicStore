require 'rails_helper'

# Change this OrganicStoresController to your project
RSpec.describe OrganicStoresController, type: :controller do
    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    }
  
    describe "GET /index" do
        it "render a successful response" do
        OrganicStore.create! valid_attributes
        get organic_stores
        expect(response).to be_successful
      end
    end
  
    describe "GET /show" do
        it "render a successful response" do
        organic_store = OrganicStore.create! valid_attributes
        get organic_stores/1
        expect(response).to be_successful
      end
    end
  
    describe "GET /new" do
        it "render a successful response" do
        get organic_stores/1
        expect(response).to be_successful
      end
    end
    describe "GET /edit" do
        it "render a successful response" do
            OrganicStore =OrganicStore! valid_attributes
          get edit_article_url(article)
          expect(response).to be_successful
        end
      end
    
    describe "DELETE /destroy" do
        it "destroys the requested organicstore" do
          OrganicStore =OrganicStore.create! valid_attributes
          expect {
            delete article_url(OrganicStore)
          }
        end
      end
      it "redirects to the articles list" do
        OrganicStore =OrganicStore.create! valid_attributes
        delete article_url(article)
        expect(response).to redirect_to(articles_url)
      end

      describe "PATCH /update" do
        context "with valid parameters" do
          let(:new_attributes) {
            skip("Add a hash of attributes valid for your model")
          }
        end
    end
    
          it "updates the requested article" do
            OrganicStore =OrganicStore.create! valid_attributes
            patch article_url(article), params: { article: new_attributes }
            OrganicStore.reload
            skip("Add assertions for updated state")
          end

          describe "POST /create" do
            context "with valid parameters" do
              it "creates a new Article" do
                expect {
                  post articles_url, params: { article: valid_attributes }
                }.to change(Article, :count).by(1)
              end
            end
        end
        
              it "redirects to the created article" do
                post articles_url, params: { article: valid_attributes }
                expect(response).to redirect_to(article_url(Article.last))
              end
            context "with invalid parameters" do
                it "does not create a new Article" do
                  expect {
                    post articles_url, params: { article: invalid_attributes }
                  }.to change(Article, :count).by(0)
                end
            end
            it "renders a successful response (i.e. to display the 'new' template)" do
                 post articles_url, params: { article: invalid_attributes }
                expect(response).to be_successful
            end
    

    describe "GET #index" do
    it "returns a success response" do
        #OrganicStore.create! valid_attributes
        get :index, params: {}, session: valid_session
        expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
    end
   end
end
