import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_hello_world(client):
    response = client.get('/')
    assert response.data == b'Hello Pythooooonnn'
    assert response.status_code == 200

def test_page1(client):
    response = client.get('/page1')
    assert response.data == b'This is page 1'
    assert response.status_code == 200