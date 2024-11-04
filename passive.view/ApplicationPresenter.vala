public class ApplicationPresenter {
    private IApplicationView view;

    public ApplicationPresenter (IApplicationView view) {
        this.view = view;
    }

    public void show () {
        view.show();
    }

    public void showDialog () {
        view.showDialog();
    }
}