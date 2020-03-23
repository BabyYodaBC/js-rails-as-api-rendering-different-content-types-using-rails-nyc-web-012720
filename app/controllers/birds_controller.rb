# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render 'birds/index.html.erb'
#   end
# end

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"
    # render json: @birds
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # rails does magic for us by automatically converting to json
    # to explicitly convert our array or hash, add .to_json on the end
  end
end

# //Instance variables (@) were needed to render to the erb.
# //Since we are directly rendering to JSON in the same action, 
# //no longer need to use instance variables, instead can use local variable

# class BirdsController < ApplicationController
#   def index
#     birds = Bird.all
#     render json: birds
#   end
# end