
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var autoReviewSettings = new AutoReviewSettings
{
	NotReviewedResult = "Deny",
};

var recurrenceSettings = new AccessReviewRecurrenceSettings
{
	RecurrenceType = "onetime",
	RecurrenceEndType = "endBy",
	DurationInDays = 0,
	RecurrenceCount = 0,
};

var settings = new AccessReviewSettings
{
	MailNotificationsEnabled = true,
	RemindersEnabled = true,
	JustificationRequiredOnApproval = true,
	AutoReviewEnabled = false,
	ActivityDurationInDays = 30,
	AutoApplyReviewResultsEnabled = false,
	AccessRecommendationsEnabled = false,
	RecurrenceSettings = recurrenceSettings,
	AutoReviewSettings = autoReviewSettings,
};

var reviewers = new AccessReviewReviewer
{
	Id = "5a4e184c-4ee5-4883-96e9-b371f8da88e3",
};

var _reviewers = new AccessReviewReviewer
{
	Id = "f260246a-09b1-4fd5-8d18-daed736071ec",
};

var reviewersList = new List<AccessReviewReviewer>();
reviewersList.Add( _reviewers );
reviewersList.Add( reviewers );

var reviewedEntity = new Identity
{
	Id = "99025615-a0b1-47ec-9117-35377b10998b",
};

var accessReview = new AccessReview
{
	DisplayName = "TestReview",
	StartDateTime = "2017-02-10T00:35:53.214Z",
	EndDateTime = "2017-03-12T00:35:53.214Z",
	ReviewedEntity = reviewedEntity,
	ReviewerType = "delegated",
	BusinessFlowTemplateId = "6e4f3d20-c5c3-407f-9695-8460952bcc68",
	Description = "Sample description",
	Reviewers = reviewersList,
	Settings = settings,
};

await graphClient.AccessReviews
	.Request()
	.AddAsync(accessReview);

```