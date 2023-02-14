class LeadAssigner
  def initialize(lead)
    @lead = lead
  end

  def call
    lead.update(sales_office: sales_office) && lead
  end

  private

  attr_reader :lead

  def sales_office
    SalesOffice.find_by(state: lead.state)
  end
end