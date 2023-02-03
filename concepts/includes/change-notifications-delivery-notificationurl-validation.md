
---
author: jumasure
ms.topic: include
ms.date: 03/02/2023
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->
<!-- Q: Is this specific to working with webhooks?
-- Is the validation done during subscription renewal?
 -->

Microsoft Graph validates the notification endpoint provided in the **notificationUrl** property of the subscription request before creating the subscription. The validation process occurs as follows:

1. Microsoft Graph encodes a validation token and includes it in a POST request to the notification URL as follows.

    ``` http
    Content-Type: text/plain; charset=utf-8
    POST https://{notificationUrl}?validationToken={opaqueTokenCreatedByMicrosoftGraph}
    ```

1. The client must properly URL decode the `validationToken` query parameter provided in the preceding step, and escape any HTML/JavaScript.

   Escaping is a good practice because malicious actors can use the notification endpoint for cross-site scripting type of attacks.

   In general, treat the validation token value as opaque, as the token format can change without notice. Microsoft Graph never sends any value containing HTML or JavaScript code.

1. The client must provide a response with the following characteristics within 10 seconds of step 1:

    - A status code of `HTTP 200 OK`.
    - A content type of `text/plain`.
    - A body that includes the _URL decoded_ validation token. Simply reflect back the same string that was sent in the `validationToken` query parameter.

    The client should discard the validation token after providing it in the response.

    > [!IMPORTANT]
    > The validation token must be returned in pain text. If the client returns an encoded validation token, the validation fails.

Additionally, you can use the [Microsoft Graph Postman collection](/graph/use-postman) to confirm that your endpoint properly implements the validation request. The **Subscription Validation** request in the **Misc** folder provides unit tests that validate the response provided by your endpoint.

![validation response test results](../images/change-notifications/validation-request-tests-results.png)