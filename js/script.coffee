app = angular.module('app', [])

app.controller('TestAppCtrl', ['$scope', ($scope)->
		# This would be fetched from a database or somewhere else but this is just to show some dynamic building with Angular.
		$scope.contactFields = [
			{
				title: 'First Name',
				id: 'firstname',
				value: 'Nathan'
			},
			{
				title: 'Last Name',
				id: 'lastname',
				value: 'Mots'
			},
			{
				title: 'Email',
				id: 'email',
				value: 'nm@fake.com'
			},
			{
				title: 'Phone Numer',
				id: 'phonenumer',
				value: '555-555-5565'
			},
			{
				title: 'Postal Code',
				id: 'postalcode',
				value: 'Z9Z 9Z9'
			}											
		]

		$scope.aboutFields = [
			{
				title: 'Technical',
				id: 'technical',
				panes: [
					{
						title: 'Languages',
						content: 'Ruby, Java, Groovy, Javascript, CoffeeScript, PHP, C, C#, Python, F#, HTML, CSS, SASS, SQL.',
						time: ''
					},
					{
						title: 'Frameworks & Tools',
						content: 'Rails, Grails, AngularJS, ExtJS, Symfony2, JQuery, LingPipe, Grunt, UnderscoreJS, NodeJS, WEKA, JIRA, Git, SVN, Mobilefant.',
						time: ''
					}					
				]
				
			},
			{
				title: 'School',
				id: 'school',
				panes: [
					{
						title: 'Post-Secondary',
						content: 'University of Victoria: Computer Science Major',
						time: '2009 – 2015'
					},
					{
						title: 'High School',
						content: 'Glenlyon Norfolk School',
						time: '2002 – 2009'
					}	
				]				

			},
			{
				title: 'Experience',
				id: 'experience',
				panes: [
					{
						title: 'Trusterra Technologies',
						content:'Software Development Co-op',
						time: '2014-05 - 2014-09'
					},
					{
						title: 'Neverblue',
						content:'Software Developer and Support Co-op',
						time: '2013-05 - 2013-08'
					},
					{
						title: 'Genologics',
						content:'Software Developer Co-op',
						time: '2012-06 - 2012-12'
					}					
				]
			},
			{
				title: 'Volunteer',
				id: 'volunteer',
				panes: [
					{
						title: 'Yelp',
						content:'Sentiment Analysis Mining',
						time: '2015'
					},
					{
						title: 'Microsoft Studios',
						content:'Code4Cash Hackathon',
						time: '2014, 2015'
					},
					{
						title: 'Personal Project',
						content:'Twitter API Miner',
						time: '2014'
					},
					{
						title: 'Microsoft Studios',
						content:'Kinect Hackathon',
						time: '2013'
					},
					{
						title: 'University of Victoria ',
						content:'Programming Club',
						time: '2013'
					}												
				]
			}
		]
		return
	])