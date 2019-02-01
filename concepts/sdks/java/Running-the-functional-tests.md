Functional tests are written to reach the API service directly, instead of mocking responses. This allows us to verify that a workload (such as Outlook or Excel) can perform its key scenarios successfully by using the Java SDK.

## When to run the tests
To contribute general improvements to the SDK, it is not necessary to run the functional tests. Currently, these tests are ignored by CI. However, if you are making large changes or are contributing helper methods to a specific workload, you can run these to ensure live calls continue to work as expected.

## How to run the tests
The functional tests use the [resource-owner credential flow](https://blogs.msdn.microsoft.com/wushuai/2016/09/25/resource-owner-password-credentials-grant-in-azure-ad-oauth/) to authorize a user. This flow has been deprecated in the v2 auth portal ([apps.dev.microsoft.com](apps.dev.microsoft.com)). You must instead register an application through the v1 Azure AD auth portal ([portal.azure.com](portal.azure.com)).

0. Create a demo tenant to use for the tests (highly recommended)
    - The tests require an O365 subscription and have a few instances where they do not clean up after themselves completely.

    - You can get a trial O365 developer subscription by registering at [dev.office.com](https://dev.office.com/devprogram).

1. Register a new application on your tenant
    - Follow the advice listed at [Adding an application](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-integrating-applications#adding-an-application).

    - Select **Native Application**. The redirect URI will not be used.

    - Assign access to Graph by selecting **Settings** > **Required permissions** > **Microsoft Graph**. You need access to most of the privileges listed, so select all delegated permissions. 

    - Select **Grant Permissions** in the Required permissions blade to consent.

2. Set your test constants in [Constants.java](https://github.com/microsoftgraph/msgraph-sdk-java/blob/master/src/main/java/com/microsoft/graph/core/Constants.java).

3. Run desired tests in [com.microsoft.graph.functional](https://github.com/microsoftgraph/msgraph-sdk-java/tree/master/src/test/java/com/microsoft/graph/functional).
