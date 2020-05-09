# fah-heroku

---------------------------------------------------------------------------------

This project is achieved. My heroku account were suspended for violating their acceptable use policy.
When I asked which line did I violate, I received no response.

---------------------------------------------------------------------------------

This project is intended to use free resources provided by <a href="https://www.heroku.com/">Heroku</a> to execute <a href="https://foldingathome.org/">Folding@home</a>

## Background 
As Corona virus(Covid-19) becomes a global threat, Folding@home redirected all resources to help with understanding the virus and developing treatments. This project is intended to use personal "Free Dynos" on Heroku to help with CPU computing.

https://foldingathome.org/2020/03/15/coronavirus-what-were-doing-and-how-you-can-help-in-simple-terms/

https://www.somagnews.com/nvidia-invites-pc-players-to-fight-corona-virus/

## Setup

- Create a Heroku app
- Set stack type to container
- Set buildpack to https://github.com/fionn/heroku-buildpack-nothing.git
- Change other setting as you wish
- Deploy code from this repo to the created app. You can
    - Manually deploy with Heroku CLI
    - Fork this repo and link it to Heroku
- Make sure worker count is scaled to 1 with Free Dynos
- Watch log and make sure it is working
    - It may takes some time to find available tasks since our setup can only handle small and simple work

## Disclaimer
This project is purely for my personal use and under MIT licence. If you want reuse the code/setup, be responsible.   



 
