# duolingo

Clone Duolingo GUI and mock backend - Midterm

# Screens of this application

## Welcome Screen
![Welcome Screen](assets/screens/welcome.jpg)

## Login Screen
![Login Screen](assets/screens/login.jpg)

Course Screen displays When click 'GET STARTED' in the Welcome Screen

## Course Screen
![Course Screen](assets/screens/course.jpg) ![Course Screen](assets/screens/course-1.jpg)

## Lesson Screen 
displays when clicking any course node in the Course Screen. 

The original app will have different lesson depending on what node was clicked.

With a linear progress bar updating as the 'CONTINUE' button is clicked (mocking the original app lesson but with no answer validation).

After the lesson is finished, a dialog displays implying the end of the lesson and user is redirected to the Course Screen.

![Lesson Screen](assets/screens/lesson.jpg) ![Lesson Screen](assets/screens/lesson-1.jpg) ![Lesson Screen](assets/screens/lesson-2.jpg)
![Lesson Screen](assets/screens/lesson-3.jpg) ![Lesson Screen](assets/screens/lesson-4.jpg) ![Lesson Screen](assets/screens/lesson-great-job.jpg)

## Profile Screen
![Profile Screen](assets/screens/profile.jpg)

<b> In Profile Screen: </b>
* Friend Suggestions section as a horizontal listview (scrollable)
* Friends section as a with 2 different tab bar view 
* Achievements section with pre-defined items length

![Profile Screen](assets/screens/friend-suggestions.jpg)

![Profile Screen](assets/screens/friends.jpg)

![Profile Screen](assets/screens/friends-1.jpg)

![Profile Screen](assets/screens/achievements.jpg)

## Leaderboard Screen
![Leaderboard Screen](assets/screens/leaderboard.jpg)

Badges display as a horizontal listview on appbar (scrollable)

![Leaderboard Screen](assets/screens/leaderboard-badges.jpg)

Vertical listview displaying top 30 users of the weekky leaderboard

![Leaderboard Screen](assets/screens/leaderboard-1.jpg)

## Shop Screen
displays shopping items

![Shop Screen](assets/screens/shop.jpg)
![Shop Screen](assets/screens/shop-1.jpg)

## Explore Screen

displays duolingo news feed

![Shop Screen](assets/screens/explore.jpg)
![Shop Screen](assets/screens/explore-1.jpg)
![Shop Screen](assets/screens/explore-2.jpg)


# TODO

* Display a dialog under the Course Node in the Course Screen when user clicks on a node. 
The dialog will display right under the node depending on the current position of the node instead of displaying at a fixed position.
If the current position of the clicked node is at the bottom of the screen that there is not enough space for the dialog to display under it, shift the course node up to where there is enough space for the dialog to display. 
