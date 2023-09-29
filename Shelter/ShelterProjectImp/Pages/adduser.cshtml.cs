using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using EdgeDB;
using static System.Runtime.InteropServices.JavaScript.JSType;
using System.Numerics;
using System.Reflection;

namespace ShelterProjectImp.Pages;

public class adduserModel : PageModel
{
    [BindProperty]
    public User NewUser { get; set; } = new();
    
    private readonly EdgeDBClient _client;

    public adduserModel(EdgeDBClient client)
    {
        _client = client;
    }

    public void OnGet()
    {

    }

    public async Task<IActionResult> OnPost()
    {

        var query = """
                    INSERT User {
                        first_name := <str>$first_name, 
                        last_name := <str>$last_name, 
                        email := <str>$email, 
                        user_type := <str>$user_type, 
                        phone := <str>$phone, 
                        password := <str>$password,
                        gender := <str>$gender, 
                        is_smoker := <bool>$is_smoker, 
                        has_pets := <bool>$has_pets, 
                        pets_type := <str>$pets_type
                    };
                    """;
        
        await _client.ExecuteAsync(query, new Dictionary<string, object?>
        {

            {"first_name", "ahmed"},
            {"last_name", NewUser.LastName},
            {"email", NewUser.Email},
            {"user_type", NewUser.UserType},
            {"phone", NewUser.Phone},
            {"password", NewUser.Password},
            {"gender", NewUser.Gender},
            {"is_smoker", NewUser.IsSmoker},
            {"has_pets", NewUser.HasPets},
            {"pets_type", NewUser.PetsType}
        });
      
        return Page();
    }
}

public class User
{
  
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string UserType { get; set; }
    public string Phone { get; set; } = "";
    public string Password { get; set; }
    public string Gender { get; set; }
    public bool IsSmoker { get; set; }
    public bool HasPets { get; set; }
    public string PetsType { get; set; }

    public User()
    {

    }

    public User(string firstName, string lastName, string email, string user_type, string phone, string password, string gender, bool is_smoker, bool has_pets, string pets_type)
    {
        FirstName = firstName;
        LastName = lastName;
        Email = email;
        UserType = user_type;
        Phone = phone;
        Password = password;
        Gender = gender;
        IsSmoker = is_smoker;
        HasPets = has_pets;
        PetsType = pets_type;
    }
}