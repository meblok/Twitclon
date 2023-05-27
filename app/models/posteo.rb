class Posteo < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_full_text,
against:{
        UserName: 'A',
        Description:  'B',
    }

        
   
end
