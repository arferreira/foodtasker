from django.test import TestCase

def test_home_page_view(self):
    response = self.client.get('/')
    self.assertEqual(response.status_code, 200)
    self.assertTemplateUsed(response, 'home.html')

