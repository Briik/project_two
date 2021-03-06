class RelationsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
      # index
      def index
        @relationships = Relation.all
        @countries = Country.all
        @country_names = []
        @countries.each do |country|
            @country_names << country.name
        end
      end

      # new
      def new
          @relation = Relation.new
          @countries = Country.all
          @targets = Target.all
      end

      # create
      def create
          @relation = Relation.create!(relations_params)
        redirect_to relations_path()
      end

      #show
      def show

      end

      # edit
      def edit
          @relation = Relation.find(params[:id])
          @countries = Country.all
          @targets = Target.all
          @country = Country.find(@relation.country_id)
          @target = Target.find(@relation.target_id)
      end

      # update
      def update
          @relation = Relation.find(params[:id])
          @relation.update(relations_params)
          redirect_to relations_path()
      end

      # destroy
      def destroy
        @relation = Relation.find(params[:id])
        @relation.destroy
        redirect_to relations_path()
      end

      private
      def relations_params
        params.require(:relation).permit(:country_id, :target_id, :allies, :coordination, :enemies, :updated_at)
      end

end
