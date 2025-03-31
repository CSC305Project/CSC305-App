-----------------Ndoumbe N---------------

A/B Test Plan Summary

A/B Test Name: Product Feature Card Layout: Scrolling vs. Tab Navigation
User Story Number: US7 (Feature Discovery)
Metrics:

Happiness: User satisfaction scores
Engagement: Time on page, features viewed
Adoption: Feature trial rate
Retention: 7-day return rate

Hypothesis: A tabbed interface for product features will increase feature discovery and adoption compared to the current long-scroll design.
Problem: Only 23% of visitors scroll beyond halfway on our Features page, meaning 77% never see key product capabilities. This leads to uninformed purchase decisions, undiscovered differentiating features, frequent support questions, and user frustration.
Experiment Setup:

40% of website visitors (20% control, 20% variant)
4-week duration
All device types
Firebase Remote Config and A/B Testing
Custom events tracking page views, feature interactions, and trial initiations

Variations:
Control (A): Current long-scroll design with sequential feature listing
Variant (B): Tabbed navigation interface with 5 core feature categories as tab

-------------------------------------------------------------------------

-----------------Selena C---------------

A/B Test Plan: GoalPage - User Story 4
Metrics: Happiness: User satisfaction based on feedback surveys and Net Promoter Score (NPS).
Engagement: Click-through rates on key call-to-action (CTA) buttons.
Adoption: Percentage of users completing the desired action (e.g., signing up, purchasing, etc.).
Retention: Number of returning users interacting with the page after initial exposure.
Task Success: Percentage of users who complete the primary goal of the page.
Problem Statement:
Users visiting the "GoalPage" often do not engage with the CTA buttons as expected. Heatmap analysis shows that users scroll past key sections without interacting. The conversion rate is below the expected benchmark, suggesting a bottleneck in engagement.

Hypothesis:
If we introduce a more visually engaging CTA with contrasting colors and animations, users will be more likely to click, increasing engagement and conversion rates.
Target Audience: 50% of the user base will be allocated to the experiment, ensuring a diverse range of demographics.

Firebase Capabilities: Firebase Remote Config and Firebase A/B Testing will be used to deploy the variations dynamically.

Tracking Setup:
Custom events will track button clicks, scroll depth, and time spent on the page.
Funnel tracking will measure the drop-off points within the user journey.
Conversion rates from goal tracking in Firebase Analytics.

Success Criteria:
A 5% or greater increase in CTA click-through rates.
A statistically significant increase in conversions with a confidence level of 95%.
Reduction in drop-off rates in key sections of the page.

Next Steps:
Implement A/B test using Firebase Remote Config.
Monitor and analyze performance over a two-week period.
Determine statistical significance and user impact.
Roll out the winning variation or iterate further based on insights.
This A/B test aims to improve engagement and adoption by refining the user experience on the "GoalPage."

------------------------------------------------------------------------------
-----------------Jack M---------------


A/B Test Name:  Adding supporting/inspirational messages for when a user completes a financial goal
Metrics: Happiness: User satisfaction based on feedback surveys and Net Promoter Score (NPS).
Engagement: Click-through rates on key call-to-action (CTA) buttons.
Adoption: People will like the sense of accomplishment from our app
Retention: Users will want to complete more goals, and use our app for longer periods of time

Hypothesis: When users are tracking and completing goals, they will want to complete more goals and therefore spend more time on the app if there is some sort of feedback given once a goal is complete. These positive messages will make the user feel accopmlished and incentifize them to complete more.

Firebase Capabilities: Firebase Remote Config and Firebase A/B Testing will be used to deploy the variations dynamically.

Tracking Setup:
We will use custom events to track the numebr of goals completed per user and then compare them to see if there is any difference. There will also be comparisons in the Net promotor score to determine if satisfaction went up.

Success Criteria:
Any increase in completion rate of financial goals.

Next steps:
implemen the backend firebase configurations, and use the metrics gained to see results. Run A/B testing on 50% of user base, and keep the others on the base version of the app.
If there is no change, stick to the normal configuration, and if there is an increase in completion rate, roll out the feature to all users.

--------------------------------------------------------
-----------------Roland G---------------
A/B Test Name:  Make a meaningful name for the test. For example  "Signup/Sign In 1 screen or 2 screens", could be a title for an A/B test to determine if users prefer having account creation and login on a single screen, or two screens.
User Story Number: For instance, the "Signup/Sign In 1 screen or 2 screens" A/B test would be a task under US1 (Account Creation). 
Metrics:  Your team's HEART metrics that this A/B test measures.
Hypothesis: State your hypothesis for this A/B test
What problem are we trying to solve? Its impact? (e.g. how big this problem is to our customers?) In formulating the hypothesis, first you need to define the problem you want to solve. For example, you are an SaaS that offers free trial and you want to improve Adoption. But that problem might be too broad to form an A/B test as you can simply test one variable in an A/B test to be effective (otherwise you won’t know which variable is causing the change). So to narrow down the problem you want to solve, you need to find out the bottle-neck in the conversion funnel – where do people drop off the most? Are there any key information or call-to-action buttons that you expect people to read/click but they didn’t? 
After narrowing down the problem you want to solve, you then need to make a hypothesis as to what causes those bottlenecks and what you can do to improve. For example, you noticed most of the visitors will visit your “Features” page but very few of them will actually scroll past even half of the page so many features that you think are important are not actually viewed by the visitors. To improve this, one hypothesis might be using tab or toggle list design to make your page shorter and visitors can select to dig deeper into content that they are interested in by expanding the content. Remember when formulating your hypothesis, change only one variable so that you will know it’s really that variable that is causing the change in conversion..
Experiment - Detail out the experiment setup that you will use to test your hypothesis using Firebase capabilities. Describe the audiences – will all users be able to view the experiment? Or you will only allocate x% of your user base to the experiment? Lay out the details with the rationale behind this decision. Describe the tracking using Firebase Analytics. With your HEART metrics, what tracking needs to be set up? 
Variations - In this section, describe what variations you would like to test. Layout the design work related and add diagrams, mockups and designs related to the confirmed variation that you’d like to test.

-----------------------------------------------------------------------
-----------------Noah V---------------

A/B Test Name:  Start user on login page vs. starting user on an app introduction page
User Story Number: US6 
Metrics: Test the click through rate/sign up rate for when we have a intro page vs without one.
Hypothesis: State your hypothesis for this A/B test
Problem: We are trying to solve the problem of knwoing if people would rather just login to our app becuase they already know or trust our app based on the app store screenshots and description, or if we need to give them more info before having them create an account with us.
Experiment: We will use Firebase A/B Testing to conduct a split test between two onboarding flows. The experiment will allocate users evenly with 50% seeing the control (direct login) and 50% seeing the variant (introduction page before login). We'll target 100% of new users who open the app for the first time to ensure sufficient sample size for statistical significance within 2 weeks. The experiment will run for 30 days or until we reach statistical significance at 95% confidence level, whichever comes first.
For tracking, we'll implement Firebase Analytics events at key touchpoints:

"app_open" - baseline tracking for all users
"intro_page_viewed" (variant only)
"intro_page_cta_clicked" (variant only)
"login_page_viewed"
"account_creation_started"
"account_creation_completed"

We'll create a funnel analysis to measure drop-off rates at each step and compare conversion rates between both variants using our primary HEART metrics: adoption (sign-up completion rate) and engagement (retention at day 1, 7, and 14).
Variations:

Control (Version A): Users open the app and are immediately directed to the login/signup screen with options to sign in with email, Google, or Apple accounts.
Variant (Version B): Users are first shown a 3-slide introduction carousel highlighting key app features and benefits, with a prominent "Get Started" CTA button at the end that leads to the same login/signup screen as the control.

Slide 1: App's primary value proposition with engaging imagery
Slide 2: Key features demonstration with simple illustrations
Slide 3: Trust indicators (user testimonials, ratings) with clear CTA

The design will maintain consistent branding, color scheme, and UI elements between both variations, with the only difference being the presence or absence of the introduction screens.




