module LeadsHelper
  def state_options_for_select 
    Locatable::STATES 
  end

  def sales_person_options_for_select(sales_office)
    sales_office.sales_people.pluck(:name, :id)
  end
end
