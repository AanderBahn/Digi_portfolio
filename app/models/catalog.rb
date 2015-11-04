class Catalog < ActiveRecord::Base

  def catHist
    if category = "Historical"
    end
  end

  def catThea
  end

  def catMod
  end


  #has_attached_file :???, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
end
