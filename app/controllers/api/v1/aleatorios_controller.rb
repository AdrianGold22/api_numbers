module Api
    module V1
        class AleatoriosController < ApplicationController
            def index 
                 aleatorios = Aleatorio.order('id');
                 render json: {status: 'SUCCESS', message: 'Loaded number', data:aleatorios}, status: :ok
            
            
            end
            def show
                aleatorios= Aleatorio.find(params[:id])
                render json: {status: 'SUCCESS',message: 'Loaded number',data:aleatorios},status: :ok
            end
            
            def create
                aleatorios= Aleatorio.new(aleatorios_params)

                if aleatorios.save
                    render json: {status: 'SUCCESS',message: 'Saved number',data:aleatorios},status: :ok
                else
                    render json: {status: 'ERROR',message: 'Number not saved',data:aleatorios},status: :unprocessable_entity
                end  
                  
            end

            def destroy
                aleatorios= Aleatorio.find(params[:id])
                aleatorios.destroy
                render json: {status: 'SUCCESS',message: 'Deleted number',data:aleatorios},status: :ok
            end

            def update 
                aleatorios= Aleatorio.find(params[:id])
                if aleatorios.update(aleatorios_params)
                    render json: {status: 'SUCCESS',message: 'Updated number',data:aleatorios},status: :ok 
                else
                    render json: {status: 'ERROR',message: 'Number not updated',data:aleatorios},status: :unprocessable_entity 
                end 
            end
            private

            def aleatorios_params
                params.permit(:numero, :tipo)
            end 
             

            
        

        end
    end
    
end