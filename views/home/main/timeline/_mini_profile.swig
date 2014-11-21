<div class="panel panel-default profile">
    <div class="panel-body">
        <img class="avatar" src="{{ blog.admin.avatar.path | default('/home/images/user/default-avatar.jpg') }}">
        <div>
            <p class="nick-name">{{ blog.admin.name }}</p>
            <ul class="info">
                <li>Occupation: ...</li>
                <li>Language: ...</li>
                <li><a href="https://www.facebook.com/thaoha.tb" target="_blank">More</a></li>
            </ul>
        </div>
    </div>
</div>