class Teafinder::Tea < ActiveRecord::Base
	belongs_to :tea_type
	belongs_to :tea_style
	validates :name, presence: true
	validates :display, presence: true
	validates :tea_type_id, presence: true
	validates :tea_style_id, presence: true

	def self.search(search)
		
		@tea = Teafinder::Tea.select("*").where("display = 1")

		if !search[:tea_type_id].blank?
			@tea = @tea.where("tea_type_id = ?",search[:tea_type_id])
		end
		
		if !search[:tea_style_id].blank?
			@tea = @tea.where("tea_style_id = ?",search[:tea_style_id])
		end

		@tea = @tea.order("random()").first
	end

	def self.teaSort(searchParams, sortType)
		
		@teas = Teafinder::Tea.select("*")

		if searchParams[:sort].blank?
			@teas = Teafinder::Tea.all
		else			
			@teas = @teas.order("#{searchParams[:sort]} #{sortType}")
		end

	end
end
