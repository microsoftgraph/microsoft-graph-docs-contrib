# Running Functional Tests

## What they do
The functional tests are written to hit the API service directly, instead of mocking responses with Guzzle. This allows us to verify that a workload (Outlook, Excel, etc.) can perform its key scenarios successfully using the PHP SDK.

## When to run them
To contribute general improvements to the SDK, it is not necessary to run the functional tests. Currently, these tests are ignored by CI. However, if you are making large changes or are contributing helper methods to a specific workload, you can run these to ensure live calls continue to work as expected.

## How to run the tests
The functional tests use the [resource-owner credential flow](https://blogs.msdn.microsoft.com/wushuai/2016/09/25/resource-owner-password-credentials-grant-in-azure-ad-oauth/) to authorize a user. This flow has been deprecated in the v2 auth portal ([apps.dev.microsoft.com](apps.dev.microsoft.com)). You must instead register an application through the v1 AAD auth portal ([portal.azure.com](portal.azure.com)).

0. Create a demo tenant to use for the tests (Highly Recommended)
    - The tests require an O365 tenant and have a few instances where they do not clean up after themselves completely
    - You can get a free O365 developer tenant by registering at [dev.office.com](https://dev.office.com/devprogram)
1. Register a new application on your tenant
    - Follow advice listed [here](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-integrating-applications#adding-an-application)
    - Select "Native Application". The redirect URI will not be used
    - Assign access to Graph by clicking "Settings > Required permissions > Microsoft Graph". You will need access to most of the privileges listed, so select all delegated permissions. Then click "Grant Permissions" in the Required permissions blade to consent.
2. Set three environment variables on your machine:
    - client_id: the app ID you received upon app registration
    - test_username: a valid email address to access the tenant
    - test_password: the corresponding password for the provided username
3. Run ```vendor/bin/phpunit --group functional```
    - There are a few [known issues](https://github.com/microsoftgraph/msgraph-sdk-php/issues) that may cause a handful of tests to fail