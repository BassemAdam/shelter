module default {
  # Define the Users table
  type User {
    required property first_name -> str;
    required property last_name -> str;
    required property email -> str;
    required property user_type -> str;
    property phone -> str;
    required property password -> str;
    property gender -> str;
    required property is_smoker -> bool;
    required property has_pets -> bool;
    property pets_type -> str;
    # Define a one-to-many relationship to the Place table
    multi link owns_properties -> Place;
  } 
  # Define the Places table
  type Place {
    required link landlord -> User;
    required property tenants -> int16;
    multi link tenant_id -> User;
    required property title -> str;
    property images -> array<str>;
    required property city -> str;
    required property governorate -> str;
    required property place_type -> str;
    required property rental_type -> str;
    required property price -> decimal;
    property description -> str;
    property total_area -> decimal;
    required property elevator -> bool;
    required property private_parking -> bool;
    required property pets_allowed-> bool;
    required property grab_bars -> bool;
    required property wifi -> bool;
    required property wheelchair -> bool;
    required property is_reserved -> bool;
}

type ShortTerm {
required link place -> Place;
required property reserve_from -> datetime;
required property reserve_to -> datetime;
required property price_per_night -> decimal;
required property currency -> str;
}

type LongTerm {
required link place -> Place;
required property price_per_month -> decimal;
required property price_per_year -> decimal;
required property currency -> str;
}

type Rating {
    required link reviewer -> User;
    required link rated_place -> Place;
    required property location -> int16;
    required property cleanliness_rating -> int16;
    required property communication_rating -> int16;
    required property comment -> str;
    property rating_date -> datetime;
}
type House {
    required link place -> Place;
    required property number_of_floors -> int16;
    required property number_of_livingroom -> int16;
    multi link number_of_livingrooms -> Livingroom;
    required link kitchen -> Kitchen;
    required property number_of_bedrooms -> int16;
    multi link bedroom -> Bedroom;
    required property number_of_bathrooms -> int16;
    multi link bathroom -> Bathroom;
}
type Apartment {
    required link place -> Place;
    required property number_of_bedrooms -> int16;
    multi link bedroom -> Bedroom;
    required property number_of_livingrooms -> int16;
    multi link living_room -> Livingroom;
    required link kitchen -> Kitchen;
    required link bathroom -> Bathroom;
}
type Room {
    required link place -> Place;
    required link kitchen -> Kitchen;
    required link bathroom -> Bathroom;
    required property room_area -> decimal;
    required property number_of_beds -> int16;
    required property shared_bathroom -> bool;
    required property has_workspace -> bool;
    required property has_wardrobe -> bool;
    required property has_air_conditioner -> bool;
    required property balcony -> bool;
    required property tv -> bool;
}
type Livingroom {
    required property number_of_livingroom -> int16;
    required property number_of_sofas -> int16;
    required property balcony -> bool;
    required property fans -> bool;
    required property tv -> bool;
    required property air_conditioner -> bool;
    required property dining_table -> bool;
    required property livingroom_area -> decimal;
}
type Kitchen {
    required property refrigerator -> bool;
    required property microwave -> bool;
    required property dishes_and_silverware -> bool;
    required property cooker -> bool;
    required property household_gas -> bool;
    required property gas_tube -> bool;
    required property washer -> bool;
    required property water_kettle -> bool;
    required property kitchen_area -> decimal;
}
type Bathroom {
    required property hot_water -> bool;
    required property washing_machine -> bool;
    required property is_shared -> bool;
    required property area -> decimal;
}
type Bedroom {
    required property number_of_double_beds -> int16;
    required property number_of_single_beds -> int16;
    required property has_private_bathroom -> bool;
    required property workspaces -> int16;
    required property fans -> bool;
    required property air_conditioner -> bool;
    required property wardrobe -> bool;
    required property balcony -> bool;
    required property area -> decimal;
}
}
