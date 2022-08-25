class User < ApplicationRecord
    has_secure_password
  
    validates :name_first, :name_last, :name, :email, :role, presence: true
    validates :email, uniqueness: true
    
  
    ROLE_OPTIONS = [
      'Administrator',
      'Administrator Assistant',
      'Assistant',
      'Attorney',
      'Conflict Attorney',
      'Judge',
      'Prosecutor',
      'Other'
    ]
  
    validates :role, inclusion: { in: ROLE_OPTIONS }
  
  
  end
  