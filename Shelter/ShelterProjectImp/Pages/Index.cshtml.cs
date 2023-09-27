//using Microsoft.AspNetCore.Mvc;
//using Microsoft.AspNetCore.Mvc.RazorPages;
//using EdgeDB;

//namespace ShelterProjectImp.Pages;

//public class IndexModel : PageModel
//{
//    [BindProperty]
//    public User NewUser { get; set; } = new();
//    public int counter { get; set; } = 0;
//    private readonly EdgeDBClient _client;

//    public IndexModel(EdgeDBClient client)
//    {
//        _client = client;
//    }

//    public void OnGet()
//    {

//    }

//    public async Task<IActionResult> OnPost()
//    {
//        int counter = HttpContext.Session.GetInt32("ContactCounter") ?? 0;
//        counter++;

//        var query = "INSERT User {contact_id := <int64>$contact_id, first_name := <str>$first_name, last_name := <str>$last_name, email := <str>$email, user_type := <str>$user_type, phone := <str>$phone, password := <str>$password, gender := <str>$gender}, is_smoker := <bool>$is_smoker}, has_pets := <bool>$has_pets}, pets_type := <str>$pets_type}";

//        await _client.ExecuteAsync(query, new Dictionary<string, object?>
//        {
//            {"user_id", Convert.ToInt64(counter)},
//            {"first_name", NewUser.FirstName},
//            {"last_name", NewUser.LastName},
//            {"email", NewUser.Email},
//            {"user_type", NewUser.UserType},
//            {"phone", NewUser.Phone},
//            {"password", NewUser.Password},
//            {"gender", NewUser.Gender},
//            {"is_smoker", NewUser.IsSmoker},
//            {"has_pets", NewUser.HasPets},
//            {"pets_type", NewUser.PetsType}
//        });

//        HttpContext.Session.SetInt32("ContactCounter", counter);

//        return Page();
//    }
//}

//public class User
//{
//    public int Id { get; set; }
//    public String FirstName { get; set; }
//    public String LastName { get; set; }
//    public String Email { get; set; }
//    public String UserType { get; set; }
//    public String Phone { get; set; } = "";
//    public String Password { get; set; }
//    public String Gender { get; set; }
//    public bool IsSmoker { get; set; }
//    public bool HasPets { get; set; }
//    public String PetsType { get; set; }

//    public User()
//    {

//    }

//    public User(int id, string firstName, string lastName, string email, string user_type, string phone, string password, string gender, bool is_smoker, bool has_pets, string pets_type)
//    {
//        Id = id;
//        FirstName = firstName;
//        LastName = lastName;
//        Email = email;
//        UserType = user_type;
//        Phone = phone;
//        Password = password;
//        Gender = gender;
//        IsSmoker = is_smoker;
//        HasPets = has_pets;
//        PetsType = pets_type;
//    }
//}