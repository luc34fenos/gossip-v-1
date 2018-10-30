class StaticPageController < ApplicationController
  def accueil
  	@gossips = Gossip.all.order("id")
  end

  def propos
  end

  def change
    @gossips = Gossip.find(params["num"])
  end

  def changer
    @num = params["id"]
    @para = params["content"]
    if (@para != "")
      gos = Gossip.find(@num)
      puts gos.content
      gos.content = @para
      gos.save
    end
    if (params["effacer"] == "on")
      Gossip.destroy(@num)
    end
      redirect_to "/"
  end


  def bienvenue
  	@name = params["username"]
  end

  def contact
  end

  def new
  end

  def newest
    @new1 = params["author"]
    @new2 = params["content"]
    Gossip.create!(author: @new1, content: @new2)
    redirect_to '/'
  end
end
