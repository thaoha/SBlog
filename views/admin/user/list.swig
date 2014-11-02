{% if users | length | default(false) %}
    {% for user in users %}
        <tr class="s-item">
            <td>{{ loop.index }}</td>
            <td>{{ user.name | default('') }}</td>
            <td>{{ user.email | default('') }}</td>
            <td>{{ user.active | default(false) }}</td>
            <td>{{ user.createdAt | date('d M Y') }}</td>
            <td>
                <a class="edit-btn" href="/admin/user/form/{{ user.id }}">
                    <i class="fa fa-edit"></i> Edit</a>
                <a class="delete-btn" href="/admin/user/delete/{{ user.id }}">
                    <i class="fa fa-trash"></i> Delete</a>
            </td>
        </tr>
    {% endfor %}
{% endif %}