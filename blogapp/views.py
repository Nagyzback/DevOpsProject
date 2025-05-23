
# Create your views here.
from django.shortcuts import render
from .models import Post

def post_list(request):
    posts = Post.objects.all().order_by('-created_at')
    return render(request, 'blogapp/post_list.html', {'posts': posts})
