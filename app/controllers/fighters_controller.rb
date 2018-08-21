class FightersController < ApplicationController

    def allfighters
        render json: Fighter.all
    end

    
    def fighterStats
        @fighter = Fighter.find(params[:id])
        render json: @fighter
    end



    def createNewFighter
        
        @fighter = Fighter.new(fighterParams)

        if @fighter.save
            render json: Fighter.all
        else 
            render json: { errors: @fighter.errors.full_messages }
        end
    end



    def updateFighterStats
        @fighter = Fighter.find(fighterParams[:id])
        
        @fighter.update(fighterParams)

        if @fighter.save
            render json: @fighter
        else
            render json: { errors: @fighter.errors.full_messages }
        end
    end




    private

    def fighterParams
        params.require(:fighter).permit(:id, :first_name, :last_name, :wins, :losses, :weight_class, :title_holder, :fighter_status, :imgSrc)
    end

end
