ruby class Magazine < ActiveRecord::Base   has_many :ads end   class Ad < ActiveRecord::Base   belongs_to :magazine end ```
 Change to ==>  
```ruby resources :magazines do   resources :ads end ```
 http://guides.rubyonrails.org/routing.html#nested-resources  Shallow Nesting  
```ruby resources :articles do   resources :comments, only: [:index, :new, :create] end resources :comments, only: [:show, :edit, :update, :destroy] ```
 
```ruby resources :articles do   resources :comments, shallow: true end ```
```ruby scope shallow_path: "sekret" do   resources :articles do     resources :comments, shallow: true   end end 

http://guides.rubyonrails.org/routing.html#nested-resources
