class UsersController < ApplicationController
    def index
        @user = User.find(1)
        @achivements = Achivement.all.order(startdate: "DESC")
    end

    def edit
    end

    def update
    end
end
