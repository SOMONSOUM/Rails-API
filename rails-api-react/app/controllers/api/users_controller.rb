class Api::UsersController < ApplicationController
   def index
    @users = [
        {
            id: 1,
            name: "សុខ​ ដារ៉ា",
            avatar: "https://image.flaticon.com/icons/svg/145/145867.svg",
            title: "វិស្វករសំណង់",
            address: "ភ្នំពេញុ, កម្ពុជា",
            gender: "ប្រុស",
            age: "២០"
        },
        {
            id: 2,
            name: "ទេព វណ្ណារ័ត្ន",
            avatar: "https://image.flaticon.com/icons/svg/145/145859.svg",
            title: "ប្រធានគ្រប់គ្រង",
            address: "ភ្នំពេញុ, កម្ពុជា",
            gender: "ប្រុស",
            age: "៣០"
        },
          {
            id: 3,
            name: "ហៃ ម៉េងហួ",
            avatar: "https://image.flaticon.com/icons/svg/145/145848.svg",
            title: "អ្នកអភិវឌ្ឍកម្មវិធី",
            address: "ភ្នំពេញុ, កម្ពុជា",
            gender: "ប្រុស",
            age: "២៣"
          },
          {
            id: 4,
            name: "សាន ម៉ាន់ដេ",
            avatar: "https://image.flaticon.com/icons/svg/145/145846.svg",
            title: "វិស្វករមេកានិច",
            address: "ភ្នំពេញុ, កម្ពុជា",
            gender: "ប្រុស",
            age: "២០"
          },
          {
            id: 5,
            name: "មាស ឧត្តម",
            avatar: "https://image.flaticon.com/icons/svg/145/145849.svg",
            title: "វិស្វករអេឡិចត្រូនិច",
            address: "ស្វាយរៀង, កម្ពុជា",
            gender: "ប្រុស",
            age: "២៣"
          },
          {
            id: 6,
            name: "សុង សៀវមិញ",
            avatar: "https://image.flaticon.com/icons/svg/145/145842.svg",
            title: "វិស្វករផ្នែកទន់",
            address: "ហាណូយ, វៀតណាម",
            gender: "ប្រុស",
            age: "២១"
          },
          {
            id: 7,
            name: "សុន ចាន់មុន្នី",
            avatar: "https://image.flaticon.com/icons/svg/145/145843.svg",
            title: "វិស្វករពត៏មានវិទ្យា",
            address: "កណ្តាល, កម្ពុជា",
            gender: "ប្រុស",
            age: "២៣"
          },
          {
            id: 8,
            name: "ឈួក ទិត្យបញ្ញារ៉ា",
            avatar: "https://image.flaticon.com/icons/svg/236/236832.svg",
            title: "ប្រធានគំរោង",
            address: "ភ្នំពេញ, កម្ពុជា",
            gender: "ប្រុស",
            age: "២៦"
          },
          {
            id: 9,
            name: "ម៉ៅ ស៊ីណាត",
            avatar: "https://image.flaticon.com/icons/svg/122/122478.svg",
            title: "វិស្វករអគ្គីសនី",
            address: "ហាណូយ, វៀតណាម",
            gender: "ប្រុស",
            age: "២១"
          }
    ]
    render json: @users
   end

   def update
    
   end

   def create
     @user = User.create(user_params)

     render json: @user
   end

   private
    def user_params
      params.require(:user).permit(
          :first_name,
          :last_name, 
          :gender, 
          :title, 
          :age, 
          :avatar_url)
    end

end
