class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author
    @author
  end

  def author_name
    if @author == nil
      return nil
    else
      @author = author.name
    end
  end
end
