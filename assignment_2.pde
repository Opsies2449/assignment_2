boolean wood = false; 
boolean matches = false; 
boolean skewers = false; 
boolean food = false; 
boolean won = false; 

void setup() { 
  size(200, 200); 
} 

void draw() { 
  background(0, 0, 0); 
  
  String menu = "Tim is lost find materials to survive!"; 

if (won == false) { 
    println("materials wood " + wood + " matches " + matches + " skewers " + skewers + " food " + food); 
     
    if (wood == false) { 
      menu = menu + "1 North to main lodge"; 

    } 
    if (matches == false) { 
      menu = menu + "2 South to fire tower"; 
    } 
    if (skewers == false) { 
      menu = menu + "3 East to abandoned car"; 
    } 
    if (food == false) { 
      menu = menu + "4 West to food storage"; 
    } 
    if (wood == true && matches == true && skewers == true && food == true) { 
      menu = menu + "5 try to light the fire"; 
    } 

    int choice = Ask.forInt(menu); 

    if (choice == 0) { 
      println("secret unlocked Tim automatically wins!"); 
      won = true; 
    } else if (choice == 1) { 
      if (wood == false) { 
        wood = true; 
        println("Tim walks north to the main lodge and finds dry wood on the porch"); 
      } 
    } else if (choice == 2) { 
      if (matches == false) { 
        matches = true; 
        println("Tim goes south up the fire tower and finds a box of matches on a desk"); 
      } 
    } else if (choice == 3) { 
      if (skewers == false) { 
        skewers = true; 
        println("Tim checks the abandoned car in the east and finds metal skewers in the trunk"); 
      }
    } else if (choice == 4) { 
      if (food == false) { 
        food = true; 
        println("Tim journeys to the west and opens the food storage shed and finds some frozen chicken"); 
      } 
    } else if (choice == 5) { 
      if (wood == true && matches == true && skewers == true && food == true) { 

        float r = random(0, 101); 

        println("Tim lights the match and the value is " + r); 
        if (r > 50) { 
          println("Tim lights the fire with the matches and cooks the food and wins!"); 
          won = true; 
        } else { 
          println("Tim fails to start the fire try again"); 
        } 
      } 
    } 
  } 
} 