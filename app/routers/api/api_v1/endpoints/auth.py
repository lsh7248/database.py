from fastapi import APIRouter

router = APIRouter()

@router.post('/test')
def test(aaa):
    pass