# Testing Strategy

I chose to start with a high-level integration test that tests the View and Presenter together. This allowed me to treat things like adding the Interactor as an implementation detail. Because no behavior changed, I was able to add the Interactor as a true refactor - only changing the test setup and not the test itself.

From my perspective, the given view has 3 pieces of behavior that I wanted to test:

1) The list of achievements are shown
2) The progress of each achievement is shown
3) The accessibility of each achievement is indicated
