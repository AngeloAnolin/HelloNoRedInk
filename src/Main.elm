module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Navigation exposing (Location)
import UrlParser exposing ((</>))


main : Program Never Model Msg
main = 
    Navigation.program UrlChange
        { view = view
        , update = update
        , subscriptions = always Sub.none
        , init = init
        }


type alias Model = 
    { page: Page
    , homeContent : HomeContent
    , whyContent : WhyContent
    , fitContent : FitContent
    , lifeContent : LifeContent
    , philosophyContent : PhilosophyContent
    , nextContent : NextContent
    , notFoundContent : NotFoundContent
    }

type alias HomeContent = 
    { title1 : String
    , title2 : String
    , title3 : String
    , title4 : String
    , title5 : String
    }

type alias WhyContent = 
    { title : String
    , paragraph0 : String
    , paragraph1 : String
    , paragraph2 : String
    , paragraph3 : String
    }

type alias FitContent = 
    { title : String
    , subTitle : String
    , paragraph1 : String
    , paragraph2 : String
    , paragraph3 : String
    , paragraph4 : String
    }

type alias LifeContent = 
    { title : String
    , subTitle : String
    , paragraph1 : String
    , paragraph2 : String
    , paragraph3 : String
    , paragraph4 : String
    , paragraph5 : String
    }

type alias PhilosophyContent = 
    { title : String
    , subTitle : String
    , paragraph1 : String
    , paragraph2 : String
    }

type alias NextContent = 
    { title : String
    , introParagraph : String
    , workHeader : String
    , workTitle1 : String
    , workExp1 : String
    , workTitle2 : String
    , workExp2 : String
    , workTitle3 : String
    , workExp3 : String
    , stackHeader : String
    , techStack1 : String
    , techStack2 : String
    , techStack3 : String
    , finalHeader : String
    , emailAddress : String
    , emailAddressAttr : String
    , phoneNumber : String
    , phoneNumberAttr : String
    , githubLink : String
    }


type alias NotFoundContent = 
    { title : String
    , subTitle : String
    , paragraph1 : String
    }    

type Page
    = Home
    | WhyNoRedInk
    | FittingIn
    | LifeChanging
    | Philosophies
    | NextStuff
    | NotFound

-- Why Contents
whyTitle : String
whyTitle = "Why NoRedInk"

whyParagraph0 : String
whyParagraph0 = 
    """
    Hello NoRedInk! I am Angelo and I'd like to be considered for your Front-End
    Engineer position.
    """


whyParagraph1 : String
whyParagraph1 = 
    """
    Your core values, especially on Relentlessly Improve resontated so much in me.
    I've recently started learning Elm, and is getting more passionate on using it 
    to build and deliver resilient software products. Being in the same organization
    with the best people on Elm such as Evan and Russ, means that I would realize the 
    possibility of constantly learning and getting better with the language. 
    """

whyParagraph2 : String
whyParagraph2 = 
    """
    Technology aside, your mission and commitment to bring empathy and thoughtfulness,
    alongside leaving a real impact to the teachers and students in the world through
    your products and services is an endeavour worth being a part of. I'd like to be 
    making meaningful contributions.
    """

whyParagraph3 : String
whyParagraph3 = 
    """
    The chance to do and deliver amazing things every-single-day is something 
    I have always aspired. Working alongside with people who are determined, focused
    whilst still embracing fun and challenges are very rare nowadays in a lot of   
    organizations. Something tells me that NoRedInk has embraced values and the
    potential to grow and learn is essentially reinforced.
    """

-- Fit Contents
fitTitle : String
fitTitle = "Fitting In"

fitSubTitle : String
fitSubTitle = "How Would I be a Good Fit at NoRedInk?"

fitParagraph1 : String
fitParagraph1 = 
    """
    Although I may have a lot of experiences building software systems, using Elm
    as a primary language means I am venturing into a new landscape for which I have 
    little exposure. That means I'd spend a lot of time learning the language,
    and how it is being used to power the solutions offered by NoRedInk.
    """

fitParagraph2 : String
fitParagraph2 =
    """
    As soon as I have grown some familiarity with the technologies in place at NoRedInk,
    the next step is to take on small pieces of issues which I feel confidence in being 
    able to resolve on my own. This will further reinforce my knowledge of the systems 
    in place.
    """


fitParagraph3 : String
fitParagraph3 = 
    """
    The next step is to take on larger responsibilities, which defines major pieces of 
    functionality offered through the system. This can be a new feature, or speeding up 
    some facets of the software where the impact is a huge win for the company. 
    """


fitParagraph4 : String
fitParagraph4 = 
    """
    Alongside the process of making meaningful contributions is by establishing trust and
    confidence with my peers by staying humble and hungry. Acting with humility and a 
    curious mind brewing with desire to deliver and exceed expectations. I'd relentlessly
    pursue getting the trust, respect, and confidence of everyone on the team. Fitting in  
    does take due diligence and rigour but I know that the process is worthwhile of itself.
    """

-- Life Contents
lifeTitle : String
lifeTitle = "Working with NoRedInk Could Be Life-Changing"

lifeSubTitle : String
lifeSubTitle = 
    """
    Some reasons I believe why working for NoRedInk could alter my life for the better.
    """

lifeParagraph1 : String
lifeParagraph1 = 
    """
    Autonomy - Working at your pace anywhere and anytime aligned with the direction of the organization is the prime 
    ingredient towards delivering stuff that has relevant value.
    """


lifeParagraph2 : String
lifeParagraph2 = 
    """
    Flexibility - Unless I know there is something important that needs to be done, I can structure my schedule so that 
    I work when I can be most productive and contributing.
    """


lifeParagraph3 : String
lifeParagraph3 = 
    """
    Focus - Having the autonomy and flexibility means that I can focus and direct my energy towards the important. Less distractions and hassles from commuting to office chaos and politics means my focus is zeroed in on the task at hand.
    """


lifeParagraph4 : String
lifeParagraph4 = 
    """
    Trust - allowing people to work remotely is an essence of trust. By being trusted, I acknowldege a sense of maintaining a high level of confidence afforded by my colleagues and the company.
    """


lifeParagraph5 : String
lifeParagraph5 = 
    """
    We spend more than a third of our lives at work - doing meaningful stuff in an organization that supports it means changing your life for the better.
    """


-- Philosophies Content
philosophyTitle : String
philosophyTitle = "Philosophies (on Software)"

philosophySubTitle : String
philosophySubTitle = 
    """
    Some thoughts on Software Development
    """

philosophyParagraph1 : String
philosophyParagraph1 = 
    """
    Building software is a complex endeavour. That's why I am an advocate of constantly delivering small valuable 
    iterations of a software product. Business and technology evolve and it is but natural for the solutions in 
    place to grow as well. I always try to take the simplest approach to resolving technical challenges and add 
    features which will be valuable to the end users. I adhere to sound coding principles and believe that we can 
    deliver software that is well-architected that is easy to understand. Software that is easy to understand 
    translates to better support, maintainability and extensibility.
    """

philosophyParagraph2 : String
philosophyParagraph2 = 
    """
    In essence though, these all rely on an organization with people who passionately care about their craft, 
    backed by an environment with sound engineering principles, solid infrastructure setup, and a constant thrust 
    to deliver and make meaningful impact. NoRedInk I believe embraces the same philosophies.
    """    

-- Next Content
nextTitle : String
nextTitle = "Next Stuff"

nextIntroParagraph : String
nextIntroParagraph = 
    """
    Thank you for taking the time to read through my spiels. I could go on and on, but I would reserve those when I 
    (hope) I am considered worthy to be working with your awesome team. Briefly is a summary of what I 've been 
    engaged with.
    """

nextWorkHeader : String
nextWorkHeader = "Work Experiences"


nextWorkTitle1 : String
nextWorkTitle1 = "Systems Analyst @ City of Edmonton (April 2012 - Present)"


nextWorkExp1 : String
nextWorkExp1 = 
    """
    Working for the local government, I am fortunate to have taken different roles, ranging from developing software, 
    researching software usability, and outlining recommended workflows, providing end user support, finding bugs that 
    stops the users from using the system and engaging clients across different business units to address their technology 
    requirements. I have also been assigned in high-impact software projects and pride myself in being able to deliver 
    the outcome required for its success. I’ve also been involved heavily in the adoption of cloud-based email and 
    productivity software that everyone in the city now uses and have explored the software capabilities that lead to 
    the automated migration of all users.
    """


nextWorkTitle2 : String
nextWorkTitle2 = "Senior Programmer @ Paterson GlobalFoods Inc. (February 2010 - February 2012)"


nextWorkExp2 : String
nextWorkExp2 = 
    """
    My time with Paterson has been characterized with leading multiple software projects, engaging internal users and business, 
    documentation, and training for released software and providing technical support across different systems. Delivering web 
    and mobile solutions has allowed the company to harness technology to fully support the business and ensured that different 
    locations can access data and be up-to-date with information required to operate their units.
    """


nextWorkTitle3 : String
nextWorkTitle3 = "Software Developer @ Brunei Shell Petroleum (February 2007 – November 2009)"


nextWorkExp3 : String
nextWorkExp3 = 
    """
    Being the senior developer in the conversion and migration of legacy applications to standard 
    web and windows based solution, I’ve analyzed different software systems, ranging from logistics, 
    finance, health and safety and engineering that are key to the business’ operations. Teaming up 
    with other colleagues in the organization, we established coding practices and guidelines that 
    served as the backbone for any new software projects within the company. I’ve also provided 
    mentorship to junior developers and interns in development and implementation of software projects.
    """


nextStackHeader : String
nextStackHeader = "Technology Stack"


nextTechStack1 : String
nextTechStack1 =
    """
    Most of the technology stack I worked with centered on corporate software products such as Microsoft 
    .NET and SQL Server / Oracle database backends. Utilized Javascript mixed with good old jQuery and 
    some Telerik platform library.
    """


nextTechStack2 : String
nextTechStack2 = 
    """
    On my spare time, I have dabbled with different frameworks and languages such as Go, Python and 
    Elixir and front-end frameworks like Elm, VueJS, ReactJS, and AngularJS. This in conjunction with 
    known CSS frameworks like Semantic UI, Bulma, Material Design and the ever-trusted Bootstrap.
    """


nextTechStack3 : String
nextTechStack3 = 
    """
    P.S. I've used Elm to build this application. Link to the corresponding source code can be found 
    on Github. Any feedback on how I can improve this is welcome.
    """


nextFinalHeader : String
nextFinalHeader = "Let's take things to the next level..."


nextEmailAddress : String
nextEmailAddress = "angelo.anolin@gmail.com"


nextEmailAddressAttr : String
nextEmailAddressAttr = "mailto: angelo.anolin@gmail.com"


nextPhoneNumberAttr : String
nextPhoneNumberAttr = "tel: +17809538276"


nextPhoneNumber : String
nextPhoneNumber = "+1 780 9538276"


nextGithubLink : String
nextGithubLink = "https://github.com/AngeloAnolin/HelloNoRedInk"


-- Not Found Content
notFoundTitle : String
notFoundTitle = "Ooops.. You Stumbled Somewhere"


notFoundSubTitle : String
notFoundSubTitle = "Likely you are still looking to know more about me.."


notFoundParagraph1 : String
notFoundParagraph1 = 
    """
    I'd be happy to answer any further questions. Best way to go from here is to contact me via email and 
    I will try to respond right away.
    """


init: Location -> ( Model, Cmd Msg )
init location =
    let 
        ( model, urlCmd ) = 
            urlUpdate location { page = Home
                               , homeContent = HomeContent whyTitle fitTitle lifeTitle philosophyTitle nextTitle
                               , whyContent = WhyContent whyTitle whyParagraph0 whyParagraph1 whyParagraph2 whyParagraph3 
                               , fitContent = FitContent fitTitle fitSubTitle fitParagraph1 fitParagraph2 fitParagraph3 fitParagraph4
                               , lifeContent = LifeContent lifeTitle lifeSubTitle lifeParagraph1 lifeParagraph2 lifeParagraph3 lifeParagraph4 lifeParagraph5
                               , philosophyContent = PhilosophyContent philosophyTitle philosophySubTitle philosophyParagraph1 philosophyParagraph2
                               , nextContent = NextContent nextTitle nextIntroParagraph nextWorkHeader nextWorkTitle1 nextWorkExp1 nextWorkTitle2 nextWorkExp2 nextWorkTitle3 nextWorkExp3 nextStackHeader nextTechStack1 nextTechStack2 nextTechStack3 nextFinalHeader nextEmailAddress nextEmailAddressAttr nextPhoneNumber nextPhoneNumberAttr nextGithubLink
                               , notFoundContent = NotFoundContent notFoundTitle notFoundSubTitle notFoundParagraph1
                               }
    in
        ( model, Cmd.batch [ urlCmd ] )

type Msg 
    = UrlChange Location


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = 
    case msg of
        UrlChange location ->
            urlUpdate location model


urlUpdate : Navigation.Location -> Model -> ( Model, Cmd Msg )
urlUpdate location model = 
    case decode location of
        Nothing ->
            ( { model | page = NotFound }, Cmd.none )

        Just route ->
            ( { model | page = route }, Cmd.none )


decode : Location -> Maybe Page
decode location =
    UrlParser.parseHash routeParser location


routeParser : UrlParser.Parser (Page -> a) a
routeParser =
    UrlParser.oneOf
        [ UrlParser.map Home UrlParser.top
        , UrlParser.map WhyNoRedInk (UrlParser.s "why-noredink")
        , UrlParser.map FittingIn (UrlParser.s "fitting-in")
        , UrlParser.map LifeChanging (UrlParser.s "life-changing")
        , UrlParser.map Philosophies (UrlParser.s "philosophies")
        , UrlParser.map NextStuff (UrlParser.s "next-stuff")
        ]


view : Model -> Html Msg
view model =
    div []
        [ mainContent model
        ]


mainContent : Model -> Html Msg
mainContent model = 
    div [] <|
        case model.page of
            Home ->
                pageHome model
            WhyNoRedInk ->
                whyNoRedInk model
            FittingIn ->
                fittingIn model
            LifeChanging ->
                lifeChanging model
            Philosophies ->
                philosophies model
            NextStuff ->
                nextStuff model
            NotFound ->
                pageNotFound model

pageHome : Model -> List ( Html Msg )
pageHome model = 
    [ div [] 
        [ div []
            [ div [ class "color-change", id "left"] [] 
            , div [ class "color-change", id "right"] [] 
            , div [ class "color-change", id "top"] 
                [ img [ class "home", src "home.png" ] []
                ] 
            , div [ class "color-change", id "bottom"] []
            , div [ class "navigation"] 
                [ table [] 
                    [ tbody [] 
                        [ tr [] 
                            [ td [ class "intro active" ] 
                                [ a [ href "#why-noredink"] [ text model.whyContent.title ] 
                                ]
                            ]
                        , tr [] 
                            [ td [ class "preface active" ]
                                [ a [ href "#fitting-in"] [ text model.fitContent.title ] 
                                ]
                            ]
                        , tr [] 
                            [ td [ class "rules active" ]
                                [ a [ href "#life-changing"] [ text model.lifeContent.title ] 
                                ]
                            ]
                        , tr [] 
                            [ td [ class "communication active" ]
                                [ a [ href "#philosophies"] [ text model.philosophyContent.title ] 
                                ]
                            ]
                        , tr [] 
                            [ td [ class "structure active" ]
                                [ a [ href "#next-stuff"] [ text model.nextContent.title ] 
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
    

whyNoRedInk : Model -> List ( Html Msg )
whyNoRedInk model = 
    [ div [] 
        [ div [ class "color-change", id "top"] 
            [ a [ href "/" ] 
                [ img [ class "home", src "assets/home.png" ] [] ] 
            ] 
        , div [ id "preface" ] 
            [ div [ class "layout-full", id "divWhyNoRedInk" ]
                [ div [ class "header" ] 
                    [ h1 [] [ text model.whyContent.title ]
                    , img [ class "preface", src "assets/1_one.jpg"] []
                    ]
                , div [ class "text-container" ]
                    [ p [] [ text model.whyContent.paragraph0 ]
                    , p [] [ text model.whyContent.paragraph1 ]
                    , p [] [ text model.whyContent.paragraph2 ]
                    , p [] [ text model.whyContent.paragraph3 ]
                    ]
                ]
            ]
        ]
    ]

fittingIn : Model -> List ( Html Msg )    
fittingIn model = 
    [ div [] 
        [ div [ class "color-change", id "top"] 
            [ a [ href "/" ] 
                [ img [ class "home", src "assets/home.png" ] [] ] 
            ] 
        , div [ id "preface" ] 
            [ div [ class "layout-full", id "divFittingIn" ]
                [ div [ class "header" ] 
                    [ h1 [] [ text model.fitContent.title ]
                    , img [ class "preface", src "assets/2_two.jpg"] []
                    ]
                , div [ class "text-container" ]
                    [ h4 [] [ text model.fitContent.subTitle ]
                    , p [] [ text model.fitContent.paragraph1 ]
                    , p [] [ text model.fitContent.paragraph2 ]
                    , p [] [ text model.fitContent.paragraph3 ]
                    , p [] [ text model.fitContent.paragraph4 ]
                    ]
                ]
            ]
        ]
    ]

lifeChanging : Model -> List ( Html Msg )
lifeChanging model =    
    [ div [] 
        [ div [ class "color-change", id "top"] 
            [ a [ href "/" ] 
                [ img [ class "home", src "assets/home.png" ] [] ] 
            ] 
        , div [ id "preface" ] 
            [ div [ class "layout-full", id "divLifeChanging" ]
                [ div [ class "header" ] 
                    [ h1 [] [ text model.lifeContent.title ]
                    , img [ class "preface", src "assets/3_three.jpg"] []
                    ]
                , div [ class "text-container" ]
                    [ h4 [] [ text model.lifeContent.subTitle ]
                    , ul [] 
                        [ li [ ] [ text model.lifeContent.paragraph1 ]
                        , li [ ] [ text model.lifeContent.paragraph2 ]
                        , li [ ] [ text model.lifeContent.paragraph3 ]
                        , li [ ] [ text model.lifeContent.paragraph4 ]
                        ]
                    , p [] [ text model.lifeContent.paragraph5 ]
                    ]
                ]
            ]
        ]
    ]

philosophies : Model -> List ( Html Msg )
philosophies model = 
    [ div [] 
        [ div [ class "color-change", id "top"] 
            [ a [ href "/" ] 
                [ img [ class "home", src "assets/home.png" ] [] ] 
            ] 
        , div [ id "preface" ] 
            [ div [ class "layout-full", id "divPhilosophies" ]
                [ div [ class "header" ] 
                    [ h1 [] [ text model.philosophyContent.title ]
                    , img [ class "preface", src "assets/4_four.jpg"] []
                    ]
                , div [ class "text-container" ]
                    [ h4 [] [ text model.philosophyContent.subTitle ]
                    , p [] [ text model.philosophyContent.paragraph1 ]
                    , p [] [ text model.philosophyContent.paragraph2 ]
                    ]
                ]
            ]
        ]
    ]


nextStuff : Model -> List ( Html Msg )
nextStuff model =
    [ div [] 
        [ div [ class "color-change", id "top"] 
            [ a [ href "/" ] 
                [ img [ class "home", src "assets/home.png" ] [] ] 
            ] 
        , div [ id "preface" ] 
            [ div [ class "layout-full", id "divNextStuff" ]
                [ div [ class "header" ] 
                    [ h1 [] [ text model.nextContent.title ]
                    , img [ class "preface", src "assets/5_five.jpg"] []
                    ]
                , div [ class "text-container" ]
                    [ p [] [ text model.nextContent.introParagraph ]
                    , h2 [] [ text model.nextContent.workHeader ]
                    , h5 [] [ text model.nextContent.workTitle1 ]
                    , p [] [ text model.nextContent.workExp1 ]
                    , h5 [] [ text model.nextContent.workTitle2 ]
                    , p [] [ text model.nextContent.workExp2 ]
                    , h5 [] [ text model.nextContent.workTitle3 ]
                    , p [] [ text model.nextContent.workExp3 ]
                    , h2 [] [ text model.nextContent.stackHeader ]
                    , p [] [ text model.nextContent.techStack1 ]
                    , p [] [ text model.nextContent.techStack2 ]
                    , p [] [ text model.nextContent.techStack3 ]
                    , h2 [] [ text model.nextContent.finalHeader ]
                    , ul [] 
                        [ li []
                            [ a [ href model.nextContent.emailAddressAttr ] [ text model.nextContent.emailAddress ] ]
                        , li []
                            [ a [ href model.nextContent.phoneNumberAttr ] [ text model.nextContent.phoneNumber ] ]
                        , li []
                            [ a [ href model.nextContent.githubLink, target "_blank" ] [ text "Github (Source)" ] ]
                        ]
                    ]
                ]
            ]
        ]
    ]


pageNotFound : Model -> List ( Html Msg )    
pageNotFound model = 
    [ div [] 
        [ div [ class "color-change", id "top"] 
            [ a [ href "/" ] 
                [ img [ class "home", src "assets/home.png" ] [] ] 
            ] 
        , div [ id "preface" ] 
            [ div [ class "layout-full", id "divNotFound" ]
                [ div [ class "header" ] 
                    [ h1 [] [ text model.notFoundContent.title ]
                    , img [ class "preface", src "assets/7_seven.jpg"] []
                    ]
                , div [ class "text-container" ]
                    [ h4 [] [ text model.notFoundContent.subTitle ]
                    , p [] [ text model.notFoundContent.paragraph1 ]
                    , a [ href model.nextContent.emailAddressAttr ] [ text model.nextContent.emailAddress ]
                    ]
                ]
            ]
        ]

    ]