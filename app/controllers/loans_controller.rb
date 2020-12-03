class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  # GET /loans
  # GET /loans.json
  def index
    @loans = Loan.all
    @books = Book.all
    @users = User.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @loan = Loan.new
    @users = User.all
    @books_availables = Book.all.select { |book| book.loans? }
    @status_student = 'Reservado'
    @status_librarian = ['Reservado','Entregado']
    @book_list = @books_availables.map { |book| [book.title, book.id] }
    if @book_list.empty?
      redirect_to root_path, notice: 'No hay libros disponibles'
    else
      @user_list = @users.map { |user| [user.email, user.id] }
    end
  end

  # GET /loans/1/edit
  def edit
    @users = User.all
    @books = Book.all
    @status_librarian = ['Reservado','Entregado','Cancelado','Finalizado']
    @user_list = @users.map { |user| [user.email, user.id] }
    @books_availables = Book.all.select { |book| book.loans? }
    @book_list = @books_availables.map { |book| [book.title, book.id] }
    @book_loan = Loan.find(params[:id])
    @edit_list = @book_list.unshift([@book_loan.book.title, @book_loan.book_id])
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)

    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: 'Loan was successfully created.' }
        format.json { render :show, status: :created, location: @loan }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_params
      params.require(:loan).permit(:user_id, :book_id, :loan_start, :loan_end, :status, :gave_loan, :received_loan)
    end
end