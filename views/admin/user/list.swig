{% if users | length | default(false) %}
    {% for user in users %}
        <tr>
            <td>{{ loop.index }}</td>
            <td>{{ user.name | default('') }}</td>
            <td>{{ user.email | default('') }}</td>
            <td>{{ user.active | default(false) }}</td>
            <td>{{ user.createdAt | date('d M Y') }}</td>
            <td>
                <a href="#">View</a>
                <a href="#">Delete</a>
            </td>
        </tr>
    {% endfor %}
{% endif %}