from django.shortcuts import render, HttpResponseRedirect
from .forms import Register
from .models import User
# Create your views here.


def home(request):
    if request.method == 'POST':
        form = Register(request.POST)
        if form.is_valid():
            form.save()
    else:
        form = Register()
    stud = User.objects.all()
    return render(request, 'enroll/showadddata.html', {'form': form, 'stu': stud})


def update(request, id):
    if request.method == 'POST':
        student = User.objects.get(pk=id)
        form = Register(request.POST, instance=student)
        if form.is_valid():
            form.save()
    else:
        student = User.objects.get(pk=id)
        form = Register(instance=student)
    return render(request, 'enroll/updatedata.html', {'form': form})


def delete(request, id):
    if request.method == 'POST':
        student = User.objects.get(pk=id)
        student.delete()
    return HttpResponseRedirect('/')
