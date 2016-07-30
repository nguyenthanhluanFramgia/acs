class PayslipDetail < ApplicationRecord
  has_many :payslip_details
  belongs_to :payslip
  belongs_to :formula

  enum detail_type: [:column, :formula]

  delegate :name, to: :formula, prefix: true

  def caculated_result
    result ||= 0
  end
end
