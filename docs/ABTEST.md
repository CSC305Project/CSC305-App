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
A/B Test Name:
Adding Supporting/Inspirational Messages for When a User Completes a Financial Goal

Metrics:
Happiness: User satisfaction based on feedback surveys and Net Promoter Score (NPS).

Engagement: Click-through rates on key call-to-action (CTA) buttons.

Adoption: Increased sense of accomplishment, leading to a positive perception of the app.

Retention: Users are more likely to complete additional goals and engage with the app for longer periods.

Hypothesis:
Providing positive feedback messages when users complete financial goals will enhance their sense of achievement, motivating them to complete more goals and spend additional time in the app. This reinforcement will improve user engagement and retention.

Firebase Capabilities:
Firebase Remote Config – Dynamically deploy different variations of the messages.

Firebase A/B Testing – Randomly assign users to test and control groups to analyze impact.

Tracking Setup:
Implement custom events in Firebase Analytics to track:

Number of financial goals completed per user.

Net Promoter Score (NPS) changes between test and control groups.

User interactions with CTA buttons post-goal completion.

Success Criteria:
Increase in the completion rate of financial goals.

Higher engagement with in-app features after completing a goal.

Improvement in NPS scores indicating greater user satisfaction.

Next Steps:
Implement Firebase Remote Config and A/B Testing setup.

Assign 50% of users to the test group and keep the other 50% on the base version.

Collect and analyze data on goal completion rates, engagement, and NPS.

Based on results:

If completion rates improve, roll out the feature to all users.

If no significant impact is observed, revert to the original setup.
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




