# Use the Secure Score API with Microsoft Intelligent Security Graph

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. 

Microsoft Secure Score is a security analytics solution that gives you visibility into your security posture and how to improve it.  With the single score, you can better understand what you have done to reduce your risk in Microsoft solutions.  You can also compare your score with other organizations and see how your score has been trending over time. The Secure Score API helps you balance your organization's security and productivity needs while enabling the appropriate mix of security features. You can also project what your score would be after you adopt security features.


## Why connect to Secure Score in the Intelligent Security Graph?

The Security API provides a unified gateway to connect to security solutions from Microsoft and partners. Queries are federated to all security providers in Microsoft Graph and responses are aggregated.

### Insights into your security posture

The Secure Score API provides a single place for you to understand your security posture and what features you have enabled.

### Guidance to increase your security level

Indicators clearly showing how you are doing against a Microsoft asserted baseline control score and how you are progressing towards achieving the maximum score for that control.

### Analyze your score

Manage your risk in a proactive way by analyzing your secure score and taking actions to increase it, rather than reacting to security threats after the fact.

### Track your progress

Easily see your progress improve over time, and get insights on what changes led to the improvement in your score.



## Authorization

The Secure Score API provides access to some of your organization’s most sensitive information. To better understand the types of authorization and how to manage them. See [Understanding authorization when calling the Microsoft Graph Security API](https://techcommunity.microsoft.com/t5/Using-Microsoft-Graph-Security/Authorization-and-Microsoft-Graph-Security-API/m-p/184376)

For more information about permissions, including delegated and application permissions, see [Permissions](../../../concepts/permissions_reference.md).

## Common use cases

The following are some of the most popular requests for working with the Secure Score API.

| **Use case**   | **REST resource** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
| List secureScores | [List secureScores](../api/securescores_list.md) | [https://graph.microsoft.com/beta/security/secureScores](https://developer.microsoft.com/en-us/graph/graph-explorer?request=security/secureScores&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| List secureScoreControlProfiles | [List secureScoreControlProfiles](../api/securescorecontrolprofile_list.md) | https://graph.microsoft.com/beta/security/secureScoreControlProfiles |
| Update secureScoreControlProfiles | [Update secureScoreControlProfiles](../api/securescorecontrolprofiles_update.md) | https://graph.microsoft.com/beta/security/secureScoreControlProfiles |



## Next steps

The Secure Score API can open up new ways for you to engage with security solutions from Microsoft and partners. Follow these steps to get started:

* Drill down into [Secure Scores](../resources/securescores.md)
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Under **Sample Queries**, choose **show more samples** and set the Security category to **on**.

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).
