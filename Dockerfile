
{% macro from(image, tag="latest", user="webdevops") -%}
FROM {{ user }}/{{ image }}:{{ tag }}
{%- endmacro %}

{% macro fromOfficial(image, tag="latest") -%}
FROM {{ image }}:{{ tag }}
{%- endmacro %}

{% macro version() -%}
LABEL maintainer=info@webdevops.io \
      vendor=WebDevOps.io \
      io.webdevops.layout=8 \
      io.webdevops.version=1.5.0
{%- endmacro %}

{%- macro add(source, target) -%}
ADD {{ source }} {{ target }}
{%- endmacro -%}

{%- macro copy(source, target) -%}
COPY {{ source }} {{ target }}
{%- endmacro -%}

{%- macro expose(port) -%}
EXPOSE {{ port }}
{%- endmacro -%}

{%- macro workdir(path) -%}
WORKDIR {{ path }}
{%- endmacro -%}

{%- macro volume(volume) -%}
VOLUME {{ volume }}
{%- endmacro -%}

{%- macro entrypoint(command) -%}
ENTRYPOINT ["{{ command }}"]
{%- endmacro -%}


{%- macro cmd(command) -%}
CMD ["{{ command }}"]
{%- endmacro -%}

{%- macro cleanup() -%}
    && docker-image-cleanup
{%- endmacro -%}
