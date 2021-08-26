class HomeController < ApplicationController
  def dashboard

    @sales_all = Sale.group_by_month(:created_at, last: 12).sum(:price)

    @sales_amount_month = Sale.group_by_month(:created_at, last: 12).count

    @sales_average = Sale.group_by_month(:created_at, last: 12).average(:price)

    
    
    @sales_amount12 = Sale.where("created_at > ?", 1.year.ago).group(:origin).count

    @sales_amount6 = Sale.where("created_at > ?", 6.months.ago).group(:origin).count

    @sales_amount3 = Sale.where("created_at > ?", 3.months.ago).group(:origin).count

    @sales_amount1 = Sale.where("created_at > ?", 1.months.ago).group(:origin).count


    @pie_month12 = Sale.where("created_at > ?", 1.year.ago).group(:blend_coffe).count

    @pie_month6 = Sale.where("created_at > ?", 6.months.ago).group(:blend_coffe).count

    @pie_month3 = Sale.where("created_at > ?", 3.months.ago).group(:blend_coffe).count

    @pie_month1 = Sale.where("created_at > ?", 1.months.ago).group(:blend_coffe).count




  end
end
