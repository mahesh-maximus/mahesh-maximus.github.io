# Code Reviews to Drive Home the Point

I might have written more than what’s required to drive point about importance of code reviews, but I writing these notes for me and someone happens to read this that’s fine. 

## Background

I have thought several times whether I should right this or not, since this story is related to others who worked with me. And I have not told then nor got asked the permission to right this story, but anyway final outcome happened good way. So I’m writing this as a very hypothetical story and trying to convoy the abstract message. All the props and names are imaginary except the abstract message I’m trying to convey.

## Prologue

This particular client had a core near real time backbone system that all other enterprise applications depended upon. Let’s call that system **Az5**. Az5 was built upon a certain framework infrastructure and its licenses due to be expired and is not willing to renew the licenses since it is very expensive. We had already done POCs and cost analysis for the new framework infrastructure. And we selected a framework called **p51**. So client wanted migrate Az5 to new p51 framework before the next licenses renewal, since licenses are very expensive.

 

## Client and Project

### Project team

I was working on client lead project alone with few other offshore teammates, and they well seasoned, high calibre resources. And client had onshore team with scrum team than we are part of. Client stake holder was hands on highly technical as well as his onshore team. Even though the main client stake holder is highly technical and hands on he is not involving with project execution apart from setting the project roadmap.

### Project nature and work

Within the organisation there were many enterprise applications with state of the art cloud driven and legacy applications which were developed in early 1990s. And many chaotic integrations among them.  

We happened to work on the core business flow. 

#### Why this project is so complex

- Most of the applications are not fully unit tested nor integration tested.  And there are no end to end automation tests either.
- Hundreds of code repositories within the organisation and there are many development teams. There are some repositories the only developer who knew about the codebase has left the organisation. When you have to do a change  you need to figure out how to spin up the app and all the necessary interactions by yourself.
- Most of the time only the problematic can be run on your local system and all the other integration testing has to be done after dev deployment.
- Legacy systems cannot run on local machines any changes or interactions we have to do a deployment.

Due to the business criticality and above mentioned complexity of each core app any change that we push is cut throat. They had by weekly release cycle 

## The Az5 system

I know things look grim, but all is not lost