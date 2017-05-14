class StaticPagesController < ApplicationController
  def home
      @news = News.all.order(created_at: :desc).limit(3)
  end

  def structure

  end

  def contact

  end
end
