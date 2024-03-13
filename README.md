# Conejoz, a digital dream journal

Conejoz is an easy and customizable way to register and explore dreams and ideas

This Mobile and Web Application is designed so it can be used as a modern yet simple creative tool

Created and optimized for creatives in general. All your information stored directly into the cloud. Dream and create anywhere.

## Features:

- Create AI images from text input. 

- Customizable themes. 

- Note taking.

- Public dreams feed.

-------------------------------------------

The app is available now in English and Spanish and can be installed directly from the Google Play Store. iOS Implementation available very soon. 

# More about the features: 

## AI Image Creation

Conejoz implements by default the OpenJourney's Stable Difussion model to create images from text input. The option to use different models will be available in the future.

## Customizable Themes

Conejoz has a collection of themes just as a code editor. More themes are in the process, if you would like to see a specific theme please let me know.

## Note Taking

Conejoz is optimized for being a dream journal so note taking is a must. Due the nature of the app you can use it also as a note taking app.

## Public Dreams Feed

This public database is optimized to work as a dream explorer that you can navigate using tags of your choice. This allows you to locate specific topics of interest within the public database.

# Features in development:

- Voice recording.

- Voice to text.

- Text to 3D model file format.

-------------------------------------------

For dreamers by dreamers.

A mobile and web app created by Ivan Robayo.

-------------------------------------------

# Develoment related notes. 

Refer to this document when adding segments and new add-ons to the already working features. 

## Customizable features 

# Custom themes:

In order to add a new theme you need to first add the theme file in the **offline_themes** folder. You can locate it here. 

Then, you need to modify the UI by adding the new option available for the new theme. The screen that handles this can be located here. 

Finally, you need to modify the **changeThemeBasedOnAppTheme** function located in the **Authentication Repository**. This is important so the cloud functionalities can work properly after adding this new theme. 

# No other add-on features at the moment. 
