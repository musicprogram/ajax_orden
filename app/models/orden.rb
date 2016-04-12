class Orden < ActiveRecord::Base
	has_many :recurso_ordens
end
