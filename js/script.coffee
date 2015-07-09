app = angular.module('app', [])

app.controller('TestAppCtrl', ['$scope', ($scope)->
		# This would be fetched from a database or somewhere else but this is just to show some dynamic building with Angular.
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
						title: '',
						content:'Trusterra Technologies: Software Development Co-op',
						time: '2014-05 - 2014-09'
					},
					{
						title: '',
						content:'Neverblue: Software Developer and Support Co-op',
						time: '2013-05 - 2013-08'
					},
					{
						title: '',
						content:'Genologics: Software Developer Co-op',
						time: '2012-06 - 2012-12'
					}					
				]
			},
			{
				title: 'Volunteer',
				id: 'volunteer',
				panes: [
					{
						title: '',
						content:'Yelp Sentiment Analysis Mining',
						time: ''
					},
					{
						title: '',
						content:'Microsoft Studios: Code4Cash Hackathon 2014 & 2015',
						time: ''
					},
					{
						title: '',
						content:'Personal Project: Twitter API Miner',
						time: ''
					},
					{
						title: '',
						content:'Microsoft Studios: Kinect Hackathon',
						time: ''
					},
					{
						title: '',
						content:'University of Victoria Programming Club',
						time: ''
					}												
				]
			}
		]
		return
	])