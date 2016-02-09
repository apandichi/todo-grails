package todo.grails

class TodoItem {

    String name;
    boolean isDone;

    static constraints = {
        name(nullable: false, blank: false)
    }

    @Override
    public String toString() {
        return "TodoItem{" +
                "id=" + id +
                ", version=" + version +
                ", name='" + name + '\'' +
                ", isDone=" + isDone +
                '}';
    }
}
