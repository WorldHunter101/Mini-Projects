from typing import List, Optional
from pydantic import BaseModel

# x -> when reading from API
# xBase -> common attributes when reading & creating data
# xCreate -> attributes only when creating

# Config: orm_mode = True -> allows `data["id"]` and `data.id`


class ItemBase(BaseModel):
    title: str
    description: Optional[str] = None


class ItemCreate(ItemBase):
    pass


class Item(ItemBase):
    id: int
    owner_id: int

    class Config:
        orm_mode = True


class UserBase(BaseModel):
    email: str


class UserCreate(UserBase):
    password: str


class User(UserBase):
    id: int
    is_active: bool
    items: List[Item] = []

    class Config:
        orm_mode = True
