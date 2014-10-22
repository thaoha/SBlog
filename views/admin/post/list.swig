{% if posts | length | default(false) %}
    {% for post in posts %}
        <tr>
            <td>{{ loop.index }}</td>
            <td>{{ post.title | default('') }}</td>
            <td>{{ post.user | default('') }}</td>
            <td>{{ post.published | default(false) }}</td>
            <td>{{ post.createdAt | date('d M Y') }}</td>
            <td>
                <a href="#">View</a>
                <a href="#">Delete</a>
            </td>
        </tr>
    {% endfor %}
{% endif %}